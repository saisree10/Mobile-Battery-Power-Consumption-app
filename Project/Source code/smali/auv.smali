.class Lauv;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lauu;


# direct methods
.method constructor <init>(Lauu;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lauv;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lauv;->a:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 74
    return-void
.end method
