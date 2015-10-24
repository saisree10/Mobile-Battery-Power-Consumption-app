.class public Lalv;
.super Ljava/lang/Object;
.source "MoreSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lalv;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lalv;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->onBackPressed()V

    .line 101
    return-void
.end method
