.class public final enum Laew;
.super Ljava/lang/Enum;
.source "SkinItem.java"


# static fields
.field public static final enum a:Laew;

.field public static final enum b:Laew;

.field public static final enum c:Laew;

.field public static final enum d:Laew;

.field public static final enum e:Laew;

.field public static final enum f:Laew;

.field public static final enum g:Laew;

.field private static final synthetic h:[Laew;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Laew;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v3}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->a:Laew;

    .line 192
    new-instance v0, Laew;

    const-string v1, "UNPURCHASED"

    invoke-direct {v0, v1, v4}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->b:Laew;

    .line 193
    new-instance v0, Laew;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v5}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->c:Laew;

    .line 194
    new-instance v0, Laew;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->d:Laew;

    .line 195
    new-instance v0, Laew;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v7}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->e:Laew;

    .line 196
    new-instance v0, Laew;

    const-string v1, "UNZIPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->f:Laew;

    .line 197
    new-instance v0, Laew;

    const-string v1, "INUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laew;->g:Laew;

    .line 190
    const/4 v0, 0x7

    new-array v0, v0, [Laew;

    sget-object v1, Laew;->a:Laew;

    aput-object v1, v0, v3

    sget-object v1, Laew;->b:Laew;

    aput-object v1, v0, v4

    sget-object v1, Laew;->c:Laew;

    aput-object v1, v0, v5

    sget-object v1, Laew;->d:Laew;

    aput-object v1, v0, v6

    sget-object v1, Laew;->e:Laew;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Laew;->f:Laew;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laew;->g:Laew;

    aput-object v2, v0, v1

    sput-object v0, Laew;->h:[Laew;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laew;
    .locals 1
    .parameter

    .prologue
    .line 190
    const-class v0, Laew;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laew;

    return-object v0
.end method

.method public static values()[Laew;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Laew;->h:[Laew;

    invoke-virtual {v0}, [Laew;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laew;

    return-object v0
.end method
