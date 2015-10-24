.class Lqe;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lqb;


# direct methods
.method constructor <init>(Lqb;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lqe;->a:Lqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    const-string v0, "ToolboxClickHandler"

    const-string v1, "User Canceled Dialog."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lqe;->a:Lqb;

    invoke-virtual {v0}, Lqb;->d()V

    .line 323
    return-void
.end method
