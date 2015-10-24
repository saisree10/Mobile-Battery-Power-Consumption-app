.class public Lavx;
.super Ljava/lang/Object;
.source "ModeDxGotoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lavx;->a:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lavx;->a:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavx;->a:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    iget-object v1, v1, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lavx;->a:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->a(Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;)Lahb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lahb;->a(I)V

    .line 68
    return-void
.end method
