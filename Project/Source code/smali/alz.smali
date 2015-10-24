.class public Lalz;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/NoDisturbActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/NoDisturbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lalz;->a:Lcom/dianxinos/powermanager/menu/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lalz;->a:Lcom/dianxinos/powermanager/menu/NoDisturbActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->onBackPressed()V

    .line 63
    return-void
.end method
