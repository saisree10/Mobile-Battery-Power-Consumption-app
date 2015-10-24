.class public Lig;
.super Ljava/lang/Object;
.source "DownLoadDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lig;->a:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    iget-object v0, p0, Lig;->a:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-virtual {v0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    .line 111
    return-void
.end method
