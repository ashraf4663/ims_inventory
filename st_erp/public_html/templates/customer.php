<!-- Modal -->
<div class="modal fade" id="form_customers" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Customer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="customer_form" onsubmit="return false">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label>Date</label>
              <input type="text" class="form-control" name="date" id="date" value="<?php echo date("Y-m-d h:i:sa"); ?>" readonly/>
            </div>
            <div class="form-group col-md-6">
              <label>Customer Name</label>
              <input type="text" class="form-control" name="customer_name" id="customer_name" placeholder="Enter Customer Name" required>
            </div>
            <div class="form-group col-md-6">
              <label>Date of Birth</label>
              <input type="text" class="form-control" name="date_of_birth" id="date_of_birth"/>
            </div>
            <div class="form-group col-md-6">
              <label>Address</label>
              <input type="text" class="form-control" name="address" id="address" placeholder="Enter Address">
            </div>
            <div class="form-group col-md-6">
              <label>Phone</label>
              <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter Phone" required>
            </div>
            <div class="form-group col-md-6">
              <label>Email Address</label>
              <input type="text" class="form-control" name="email" id="email" placeholder="Enter Product Name">
            </div>
            <div class="form-group col-md-6">
              <label>Previous or Deu Bills</label>
              <input type="text" class="form-control" name="previous_deu" id="previous_deu" placeholder="Enter due if any">
            </div>
          
          
          <div class="form-group col-md-6">
            <label>Category</label>
            <select class="form-control" id="select_cat" name="select_cat" />



            </select>
          </div>
          
          <div class="form-group col-md-6">
            <label>Rafarar Customer</label>
            <select class="form-control" id="select_cus" name="select_cus" />
              

              
            </select>
          </div>
          <div class="form-group col-md-6">
            <label>Curiar</label>
            <input type="text" class="form-control" id="curiar" name="curiar" placeholder="Enter Curiar if recomanded"/>
          </div>
          <div class="form-group col-md-6">
            <label>Bank Name</label>
            <input type="text" class="form-control" id="bank" name="bank" placeholder="Enter Bank Name" />
          </div>
          <div class="form-group col-md-6">
            <label>Branch Name</label>
            <input type="text" class="form-control" id="branch_name" name="branch_name" placeholder="Enter Branch Name" required/>
          </div>
         </div>
          <button type="submit" class="btn btn-success">Add Customer</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>