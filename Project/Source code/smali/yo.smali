.class public Lyo;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lyo;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lyo;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-virtual {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->finish()V

    .line 99
    return-void
.end method
