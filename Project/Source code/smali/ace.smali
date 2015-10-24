.class Lace;
.super Ljava/lang/Object;
.source "SleepModeWarningTipsShower.java"

# interfaces
.implements Lawt;


# instance fields
.field final synthetic a:Lacc;


# direct methods
.method constructor <init>(Lacc;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lace;->a:Lacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lace;->a:Lacc;

    invoke-static {v0}, Lacc;->a(Lacc;)Lamb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamb;->f(Z)V

    .line 78
    iget-object v0, p0, Lace;->a:Lacc;

    invoke-static {v0}, Lacc;->c(Lacc;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lace;->a:Lacc;

    invoke-static {v1}, Lacc;->b(Lacc;)Lawr;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v0, "SleepModeWarningTipsShower"

    const-string v1, " WindowManager remove view  Exception ..."

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
