<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjaxFileUPloadTest.aspx.cs" Inherits="AjaxFileUploadTest.AjaxFileUPloadTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .ajax__fileupload {
            border: #D3D3D3 1px solid;
            overflow: auto;
            padding: 4px;
        }

        .ajax__fileupload_selectFileContainer {
            display: inline-block;
            overflow: hidden;
            position: relative;
        }

        .ajax__fileupload__filestatuscontainer {
            position: relative !important;
            float: right;
        }

        .ajax__fileupload_selectFileButton {
            display: inline-block;
            padding: 1px 2px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
        }

            .ajax__fileupload_selectFileButton:hover {
                background-color: #000000;
                color: #ffffff;
            }

        .ajax__fileupload_topFileStatus {
            position: relative;
            color: rgb(127, 126, 126);
        }

        .ajax__fileupload_ProgressBarHolder {
            margin-right: 70px;
        }

        .ajax__fileupload_uploadbutton {
            display: inline-block;
            padding: 1px 2px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        .ajax_fileupload_cancelbutton {
            display: inline-block;
            padding: 1px 2px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #fff;
            background-color: #d9534f;
            border-color: #d43f3a;
        }

        .ajax__fileupload_dropzone {
            border-style: dotted;
            border-width: 1px;
            line-height: 50px;
            margin-bottom: 2px;
            text-align: center;
        }

        .ajax__fileupload_queueContainer {
            border: #A9A9A9 1px solid;
            clear: both;
            margin-top: 2px;
            padding: 4px;
            position: relative;
        }

        .ajax__fileupload_progressBar {
            background-color: #CCFFCC;
            padding-left: 4px;
        }

        .ajax__fileupload_footer {
            height: 20px;
            line-height: 20px;
            margin-top: 2px;
            float: right;
            position: relative;
        }

        .ajax__fileupload_fileItemInfo {
            margin-bottom: 5px;
            position: relative;
        }

            .ajax__fileupload_fileItemInfo .filename {
                font-weight: bold;
            }

            .ajax__fileupload_fileItemInfo .uploadstatus {
                font-style: italic;
            }

            .ajax__fileupload_fileItemInfo .removeButton {
                display: inline-block;
                padding: 1px 2px;
                margin-bottom: 0;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.42857143;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                -ms-touch-action: manipulation;
                touch-action: manipulation;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                background-image: none;
                border: 1px solid transparent;
                border-radius: 4px;
                color: #fff;
                background-color: #f0ad4e;
                border-color: #eea236;
            }

            .ajax__fileupload_fileItemInfo .uploadedState {
                background-color: #fff;
                color: #060;
            }

            .ajax__fileupload_fileItemInfo .uploadingState {
                background-color: #fff;
                color: #FF9900;
            }

            .ajax__fileupload_fileItemInfo .pendingState {
                background-color: #fff;
                color: #009;
            }

            .ajax__fileupload_fileItemInfo .errorState {
                background-color: #ff0000;
                color: #ffffff;
            }

            .ajax__fileupload_fileItemInfo .cancelledState {
                background-color: #fff;
                color: #900;
            }

        .ajax__fileupload_selectFileContainer input {
            border: medium none;
            cursor: pointer;
            height: 40px;
            margin: 0;
            opacity: 0;
            position: absolute;
            right: 0;
            top: 0;
        }

        .ajax__fileupload_fileItemInfo div.removeButton {
            position: absolute;
            right: 0;
            top: 0;
        }
    </style>
    <ajx:AjaxFileUpload runat="server" MaximumNumberOfFiles="10" ClearFileListAfterUpload="true" ContextKeys="templumUpload" ID="ajxUpload" AllowedFileTypes="jpg,jpeg,png" />

</asp:Content>
