.class Lqu;
.super Ljava/lang/Object;
.source "ToolboxTctbClickHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lqs;


# direct methods
.method constructor <init>(Lqs;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lqu;->a:Lqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 556
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "User Canceled Dialog."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lqu;->a:Lqs;

    invoke-virtual {v0}, Lqs;->c()V

    .line 558
    return-void
.end method
