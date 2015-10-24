.class public Lang;
.super Ljava/lang/Object;
.source "NewModeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/NewModeActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/mode/NewModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lang;->a:Lcom/dianxinos/powermanager/mode/NewModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lang;->a:Lcom/dianxinos/powermanager/mode/NewModeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a(Lcom/dianxinos/powermanager/mode/NewModeActivity;Z)Z

    .line 172
    const/4 v0, 0x0

    return v0
.end method
