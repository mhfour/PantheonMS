<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGuest.aspx.cs" Inherits="Pantheon.AddGuest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add a Guest | Pantheon Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

    <style type="text/css">
        #dateRangeForm .form-control-feedback {
            top: 0;
            right: -15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container">

        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col col-md-12">
                            <h1>Add a new Guest</h1>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="alert alert-success" id="alertSuccess" role="alert" visible="false" runat="server">
                                    <strong>Successfully added!</strong>
                                    <p></p>
                                </div>
                                <div class="alert alert-danger" id="alertFail" role="alert" visible="false" runat="server">
                                    <strong>Unsuccessfully added. Please input the fields again.</strong>
                                    <p></p>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="row">
                                    <div role="form">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxCategory" placeholder="Guest's name" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text1" placeholder="Gender" runat="server">
                                        </div>
                                        <form id="dateRangeForm" method="post" class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-xs-5 date">
                                                    <div class="input-group input-append date" id="dateRangePicker">
                                                        <input type="text" class="form-control" name="date" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text3" placeholder="Nationality" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text4" placeholder="Passport No." runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text5" placeholder="Home Address" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text6" placeholder="Billing Address" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text7" placeholder="Credit Card No." runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text8" placeholder="Expiry Date" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text9" placeholder="Security Code" runat="server">
                                        </div>
                                        <button type="submit" class="btn btn-primary" id="btnCreate" runat="server">Submit</button>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
    <script>
        $(document).ready(function () {
            $('#dateRangePicker')
                .datepicker({
                    format: 'mm/dd/yyyy',
                    startDate: '01/01/2010',
                    endDate: '12/30/2020'
                })
                .on('changeDate', function (e) {
                    // Revalidate the date field
                    $('#dateRangeForm').formValidation('revalidateField', 'date');
                });

            $('#dateRangeForm').formValidation({
                framework: 'bootstrap',
                icon: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    date: {
                        validators: {
                            notEmpty: {
                                message: 'The date is required'
                            },
                            date: {
                                format: 'MM/DD/YYYY',
                                min: '01/01/2010',
                                max: '12/30/2020',
                                message: 'The date is not a valid'
                            }
                        }
                    }
                }
            });
        });
    </script>
</asp:Content>
