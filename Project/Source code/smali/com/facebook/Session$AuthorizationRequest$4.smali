.class Lcom/facebook/Session$AuthorizationRequest$4;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# instance fields
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$1500(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/Session$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$1500(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1810
    return-void
.end method
