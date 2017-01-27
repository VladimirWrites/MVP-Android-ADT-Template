package ${packageName};
 
public interface ${contractClass} {

    interface Presenter {

    }

    interface View<T extends Presenter> {
        void setPresenter(T presenter);
    }
}