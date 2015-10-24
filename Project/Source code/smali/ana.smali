.class public Lana;
.super Ljava/lang/Object;
.source "ModeSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/ModeSelectDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/mode/ModeSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lana;->a:Lcom/dianxinos/powermanager/mode/ModeSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lana;->a:Lcom/dianxinos/powermanager/mode/ModeSelectDialog;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->finish()V

    .line 48
    return-void
.end method
