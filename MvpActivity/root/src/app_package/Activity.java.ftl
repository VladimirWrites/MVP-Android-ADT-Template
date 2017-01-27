package ${packageName};

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;

<#if databinding>
import android.databinding.DataBindingUtil;
</#if>

<#if applicationPackage??>
import ${applicationPackage}.R;

<#if databinding>
import ${applicationPackage}.databinding.${underscoreToCamelCase(activityLayoutName)}Binding;
</#if>

</#if>

public class ${activityClass} extends AppCompatActivity{
 
    ${contractClass}.Presenter mPresenter;

<#if databinding>
    private ${underscoreToCamelCase(activityLayoutName)}Binding mBinding;
</#if>

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

<#if databinding>
        mBinding = DataBindingUtil.setContentView(this, R.layout.${activityLayoutName});
<#else>
        setContentView(R.layout.${activityLayoutName});
</#if>
        
        ${fragmentClass} fragment = (${fragmentClass}) getSupportFragmentManager()
                .findFragmentById(R.id.contentFrame);

        if (fragment == null) {
            fragment = ${fragmentClass}.newInstance();

            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.contentFrame, fragment);
            transaction.commit();
        }

        mPresenter = new ${presenterClass}(fragment);
    }
}