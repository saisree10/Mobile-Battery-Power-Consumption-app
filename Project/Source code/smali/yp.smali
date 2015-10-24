.class public Lyp;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lyp;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lyp;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    .line 110
    return-void
.end method
