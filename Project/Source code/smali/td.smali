.class public Ltd;
.super Lsr;
.source "DBAppInfo.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsr;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lsr;-><init>(Lsr;)V

    .line 18
    iput-object p3, p0, Ltd;->m:Ljava/lang/String;

    .line 19
    iput p4, p0, Ltd;->n:I

    .line 20
    iput-object p2, p0, Ltd;->l:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Ltd;->o:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ltd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltd;->n:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ltd;->o:Ljava/lang/String;

    return-object v0
.end method
