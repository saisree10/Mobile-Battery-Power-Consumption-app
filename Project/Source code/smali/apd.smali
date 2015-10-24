.class final Lapd;
.super Ljava/lang/Object;
.source "SettingsControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lapd;->a:Landroid/content/Context;

    iput p2, p0, Lapd;->b:I

    iput-boolean p3, p0, Lapd;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lapd;->a:Landroid/content/Context;

    iget v1, p0, Lapd;->b:I

    iget-boolean v2, p0, Lapd;->c:Z

    invoke-static {v0, v1, v2}, Lapb;->a(Landroid/content/Context;IZ)V

    .line 93
    return-void
.end method
