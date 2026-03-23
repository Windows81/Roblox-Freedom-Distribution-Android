.class public final enum La/a/c/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/e;

.field public static final enum b:La/a/c/e;

.field public static final enum c:La/a/c/e;

.field private static final synthetic e:[La/a/c/e;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, La/a/c/e;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    const-string v3, "NotAvailable"

    invoke-direct {v0, v1, v2, v3}, La/a/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/e;->a:La/a/c/e;

    .line 8
    new-instance v0, La/a/c/e;

    const-string v1, "DISABLED"

    const/4 v3, 0x1

    const-string v4, "Disabled"

    invoke-direct {v0, v1, v3, v4}, La/a/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/e;->b:La/a/c/e;

    .line 9
    new-instance v0, La/a/c/e;

    const-string v1, "ENABLED"

    const/4 v4, 0x2

    const-string v5, "Enabled"

    invoke-direct {v0, v1, v4, v5}, La/a/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/e;->c:La/a/c/e;

    const/4 v1, 0x3

    new-array v1, v1, [La/a/c/e;

    .line 6
    sget-object v5, La/a/c/e;->a:La/a/c/e;

    aput-object v5, v1, v2

    sget-object v2, La/a/c/e;->b:La/a/c/e;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, La/a/c/e;->e:[La/a/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, La/a/c/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/c/e;
    .locals 1

    .line 6
    const-class v0, La/a/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/c/e;

    return-object p0
.end method

.method public static values()[La/a/c/e;
    .locals 1

    .line 6
    sget-object v0, La/a/c/e;->e:[La/a/c/e;

    invoke-virtual {v0}, [La/a/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/e;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, La/a/c/e;->d:Ljava/lang/String;

    return-object v0
.end method
