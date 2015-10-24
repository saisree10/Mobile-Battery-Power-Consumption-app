.class public Ltx;
.super Ljava/lang/Object;
.source "SystemEvent.java"


# static fields
.field public static final a:Ltx;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 12
    new-instance v0, Ltx;

    const/16 v2, 0x9

    const-string v4, "sys"

    const-string v5, "crash"

    invoke-static {v4, v1, v5}, Ltf;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(IIILjava/lang/String;I)V

    sput-object v0, Ltx;->a:Ltx;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Ltx;->b:I

    .line 29
    iput p2, p0, Ltx;->c:I

    .line 30
    iput p3, p0, Ltx;->d:I

    .line 31
    iput-object p4, p0, Ltx;->e:Ljava/lang/String;

    .line 32
    iput p5, p0, Ltx;->f:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Ltx;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Ltx;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ltx;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Ltx;->f:I

    return v0
.end method
