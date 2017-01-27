package ${packageName};

public class ${presenterClass} implements ${contractClass}.Presenter {

    private ${contractClass}.View mView;

    public ${presenterClass}(${contractClass}.View view) {
        this.mView = view;
        this.mView.setPresenter(this);
    }
}