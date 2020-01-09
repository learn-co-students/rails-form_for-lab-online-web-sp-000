class SchoolClassesController <ApplicationController
    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(sc_params)
        redirect_to school_class_path(@school_class)
    end

    def show
        sc_find
    end

    def edit
        sc_find
    end

    def update
        sc_find
        @school_class.update(sc_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def sc_find
        @school_class = SchoolClass.find(params[:id])
    end

    def sc_params
        params.require(:school_class).permit(:title, :room_number)
    end
end