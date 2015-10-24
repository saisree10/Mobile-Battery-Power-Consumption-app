.class public Lii;
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
    .line 130
    iput-object p1, p0, Lii;->a:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    iget-object v0, p0, Lii;->a:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-virtual {v0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    .line 135
    return-void
.end method
