.class public final enum Lb/a/c/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/c/g;

.field public static final enum b:Lb/a/c/g;

.field public static final enum c:Lb/a/c/g;

.field public static final enum d:Lb/a/c/g;

.field private static final synthetic e:[Lb/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lb/a/c/g;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lb/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/c/g;->a:Lb/a/c/g;

    .line 20
    new-instance v0, Lb/a/c/g;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lb/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/c/g;->b:Lb/a/c/g;

    .line 21
    new-instance v0, Lb/a/c/g;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lb/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/c/g;->c:Lb/a/c/g;

    .line 22
    new-instance v0, Lb/a/c/g;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lb/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/c/g;->d:Lb/a/c/g;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/c/g;

    sget-object v1, Lb/a/c/g;->a:Lb/a/c/g;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/c/g;->b:Lb/a/c/g;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/c/g;->c:Lb/a/c/g;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/c/g;->d:Lb/a/c/g;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/c/g;->e:[Lb/a/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/c/g;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lb/a/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/c/g;

    return-object v0
.end method

.method public static values()[Lb/a/c/g;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lb/a/c/g;->e:[Lb/a/c/g;

    invoke-virtual {v0}, [Lb/a/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/c/g;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lb/a/c/g;->b:Lb/a/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lb/a/c/g;->c:Lb/a/c/g;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/c/g;->a:Lb/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lb/a/c/g;->c:Lb/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lb/a/c/g;->b:Lb/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
