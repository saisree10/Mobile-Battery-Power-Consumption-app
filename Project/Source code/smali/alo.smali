.class public Lalo;
.super Ljava/lang/Object;
.source "AutoCleanupSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lalo;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lalo;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->onBackPressed()V

    .line 75
    return-void
.end method
