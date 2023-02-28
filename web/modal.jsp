
    <div class="container">
        <div class="row">
            <div class="col fw-normal text-muted mb-4">
                Name: <span class="text-primary fw-bold text-decoration-none">${EmpList.get(index).getFirstName()} ${EmpList.get(index).getLastName()}</span>
            </div>
            <div class="col fw-normal text-muted mb-4">
                API Name: <span class="text-primary fw-bold text-decoration-none">${ApiEmp.getFirstName()} ${ApiEmp.getLastName()}</span>
            </div>
        </div>

        <div class="row">
            <div class="col fw-normal text-muted mb-4">
                Gender: <span class="text-primary fw-bold text-decoration-none">${EmpList.get(index).getGender()}</span>
            </div>
            <div class="col fw-normal text-muted mb-4">
                API Gender: <span class="text-primary fw-bold text-decoration-none">${ApiEmp.getGender()}</span>
            </div>
        </div>
    </div>

