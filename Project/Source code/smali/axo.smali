.class Laxo;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Laxn;


# direct methods
.method constructor <init>(Laxn;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Laxo;->a:Laxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Laxo;->a:Laxn;

    invoke-static {v0}, Laxn;->a(Laxn;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->c()V

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Laxn;->a(Z)Z

    .line 195
    return-void
.end method
