.class public Lavy;
.super Ljava/lang/Object;
.source "ModeDxSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lavy;->a:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lavy;->a:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavy;->a:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iget-object v1, v1, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lavy;->a:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->a(Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;)Lahb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lahb;->a(I)V

    .line 81
    return-void
.end method
