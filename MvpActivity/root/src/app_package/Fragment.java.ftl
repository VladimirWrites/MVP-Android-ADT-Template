package ${packageName};

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import ${applicationPackage}.R;

<#if databinding>
import ${applicationPackage}.databinding.${underscoreToCamelCase(fragmentLayoutName)}Binding;
</#if>

</#if>

public class ${fragmentClass} extends Fragment implements ${contractClass}.View {

    public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

    protected ${contractClass}.Presenter mPresenter;

<#if databinding>
    private ${underscoreToCamelCase(fragmentLayoutName)}Binding mBinding;
</#if>

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
<#if databinding>
        mBinding = ${underscoreToCamelCase(fragmentLayoutName)}Binding.bind(view);
</#if>
        
        return view;
    }

    @Override
    public void setPresenter(${contractClass}.Presenter presenter) {
        this.mPresenter = presenter;
    }
}