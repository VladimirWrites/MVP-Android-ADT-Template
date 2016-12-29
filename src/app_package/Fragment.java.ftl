package ${packageName};

import android.support.v4.app.Fragment;

public class ${fragmentClass} extends Fragment implements ${contractClass}.View {

    public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

    protected ${contractClass}.Presenter mPresenter;

<#if databinding>
    private ${fragmentClass}Binding mBinding;
</#if>

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
<#if databinding>
        mBinding = ${fragmentClass}Binding.bind(view);
</#if>
        
        return view;
    }
}