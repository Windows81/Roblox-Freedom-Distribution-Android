.class public final enum Lcom/d/a/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/p;

.field public static final enum b:Lcom/d/a/p;

.field private static final synthetic d:[Lcom/d/a/p;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    new-instance v0, Lcom/d/a/p;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v3, v2}, Lcom/d/a/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/d/a/p;->a:Lcom/d/a/p;

    .line 28
    new-instance v0, Lcom/d/a/p;

    const-string v1, "NO_STORE"

    invoke-direct {v0, v1, v2, v4}, Lcom/d/a/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/d/a/p;->b:Lcom/d/a/p;

    .line 19
    new-array v0, v4, [Lcom/d/a/p;

    sget-object v1, Lcom/d/a/p;->a:Lcom/d/a/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/d/a/p;->b:Lcom/d/a/p;

    aput-object v1, v0, v2

    sput-object v0, Lcom/d/a/p;->d:[Lcom/d/a/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/d/a/p;->c:I

    .line 42
    return-void
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/d/a/p;->a:Lcom/d/a/p;

    iget v0, v0, Lcom/d/a/p;->c:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/d/a/p;->b:Lcom/d/a/p;

    iget v0, v0, Lcom/d/a/p;->c:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/p;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/d/a/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/p;

    return-object v0
.end method

.method public static values()[Lcom/d/a/p;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/d/a/p;->d:[Lcom/d/a/p;

    invoke-virtual {v0}, [Lcom/d/a/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/p;

    return-object v0
.end method
