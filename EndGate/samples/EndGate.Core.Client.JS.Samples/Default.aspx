﻿<%@ Page Title="" Language="C#" MasterPageFile="~/EndGate.Core.Samples.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EndGate.Core.Client.JS.Samples.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="hero-unit">
        <h1>EndGate JavaScript Client</h1>
        <p>Gaming library</p>
    </div>

    <div class="page-header">
        <h2>Samples</h2>
    </div>

    <!-- Samples -->
    <div class="row">
        <div class="span4">
            <h3>Shapes</h3>
            <p>Demonstrates how to use the shapes graphics library.</p>
            <p><a class="btn" href="Samples/Shapes">View sample &raquo;</a></p>
        </div>
        
        <div class="span4">
            <h3>Text</h3>
            <p>Demonstrates how to use the Text2d object within the graphics library.</p>
            <p><a class="btn" href="Samples/Text">View sample &raquo;</a></p>
        </div>

        <div class="span4">
            <h3>Layering</h3>
            <p>Demonstrates how to control the layering of graphics.</p>
            <p><a class="btn" href="Samples/Layering">View sample &raquo;</a></p>
        </div>
    </div>
    <div class="row">
        <div class="span4">
            <h3>Collision Detection</h3>
            <p>Demonstrates how to use the client to detect collisions.</p>
            <p><a class="btn" href="Samples/CollisionDetection">View sample &raquo;</a></p>
        </div>

        <div class="span4">
            <h3>Collision Inspector</h3>
            <p>Allows the dragging and rotating of shapes to inspect collisions closely.</p>
            <p><a class="btn" href="Samples/CollisionInspector">View sample &raquo;</a></p>
        </div>
        <div class="span4">
            <h3>Mouse Input</h3>
            <p>Demonstrates how to use a games mouse input handler.</p>
            <p><a class="btn" href="Samples/MouseInput">View sample &raquo;</a></p>
        </div>
    </div>

    <div class="row">
        <div class="span4">
            <h3>Keyboard Input</h3>
            <p>Demonstrates how to use a games keyboard input handler.</p>
            <p><a class="btn" href="Samples/KeyboardInput">View sample &raquo;</a></p>
        </div>
    </div>

    <div class="clear"></div>
</asp:Content>