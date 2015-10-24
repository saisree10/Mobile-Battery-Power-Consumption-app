.class public final enum Lbcz;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# static fields
.field public static final enum a:Lbcz;

.field public static final enum b:Lbcz;

.field public static final enum c:Lbcz;

.field public static final enum d:Lbcz;

.field public static final enum e:Lbcz;

.field private static final synthetic h:[Lbcz;


# instance fields
.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 11
    new-instance v0, Lbcz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v2, v3}, Lbcz;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lbcz;->a:Lbcz;

    .line 12
    new-instance v0, Lbcz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2, v2, v2}, Lbcz;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lbcz;->b:Lbcz;

    .line 13
    new-instance v0, Lbcz;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4, v2, v2}, Lbcz;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lbcz;->c:Lbcz;

    .line 14
    new-instance v0, Lbcz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5, v2, v3}, Lbcz;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lbcz;->d:Lbcz;

    .line 15
    new-instance v0, Lbcz;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v6, v3, v3}, Lbcz;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lbcz;->e:Lbcz;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lbcz;

    sget-object v1, Lbcz;->a:Lbcz;

    aput-object v1, v0, v3

    sget-object v1, Lbcz;->b:Lbcz;

    aput-object v1, v0, v2

    sget-object v1, Lbcz;->c:Lbcz;

    aput-object v1, v0, v4

    sget-object v1, Lbcz;->d:Lbcz;

    aput-object v1, v0, v5

    sget-object v1, Lbcz;->e:Lbcz;

    aput-object v1, v0, v6

    sput-object v0, Lbcz;->h:[Lbcz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-boolean p3, p0, Lbcz;->f:Z

    .line 22
    iput-boolean p4, p0, Lbcz;->g:Z

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbcz;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lbcz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcz;

    return-object v0
.end method

.method public static values()[Lbcz;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lbcz;->h:[Lbcz;

    invoke-virtual {v0}, [Lbcz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcz;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lbcz;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lbcz;->g:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lbcz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
