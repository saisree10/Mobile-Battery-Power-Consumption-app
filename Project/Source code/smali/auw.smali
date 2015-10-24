.class Lauw;
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
    .line 76
    iput-object p1, p0, Lauw;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lauw;->a:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 80
    return-void
.end method
