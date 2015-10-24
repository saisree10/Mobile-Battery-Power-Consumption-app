.class final Lape;
.super Ljava/lang/Object;
.source "SettingsControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lauu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lauu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lape;->a:Landroid/content/Context;

    iput-object p2, p0, Lape;->b:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lape;->a:Landroid/content/Context;

    invoke-static {v0}, Lapb;->a(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lape;->b:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 100
    return-void
.end method
