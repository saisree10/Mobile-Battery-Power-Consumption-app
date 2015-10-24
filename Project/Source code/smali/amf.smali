.class public Lamf;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/StatusBarSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lamf;->a:Lcom/dianxinos/powermanager/menu/StatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lamf;->a:Lcom/dianxinos/powermanager/menu/StatusBarSettings;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->onBackPressed()V

    .line 131
    return-void
.end method
