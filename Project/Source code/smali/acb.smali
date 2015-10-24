.class public Lacb;
.super Ljava/lang/Object;
.source "ShowVolunteersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ShowVolunteersActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ShowVolunteersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lacb;->a:Lcom/dianxinos/powermanager/ShowVolunteersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacb;->a:Lcom/dianxinos/powermanager/ShowVolunteersActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->onBackPressed()V

    .line 35
    return-void
.end method
