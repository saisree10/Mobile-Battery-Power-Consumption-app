.class Lakw;
.super Ljava/lang/Object;
.source "GServiceDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Laku;


# direct methods
.method constructor <init>(Laku;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lakw;->b:Laku;

    iput-object p2, p0, Lakw;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lakw;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    iget-object v0, p0, Lakw;->b:Laku;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laku;->a(Laku;Z)Z

    .line 93
    return-void
.end method
