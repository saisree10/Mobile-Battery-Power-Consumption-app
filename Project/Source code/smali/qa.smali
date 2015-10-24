.class Lqa;
.super Ljava/lang/Object;
.source "ToolboxBaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lqa;->a:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lqa;->a:Lpv;

    invoke-virtual {v0}, Lpv;->k()V

    .line 287
    return-void
.end method
