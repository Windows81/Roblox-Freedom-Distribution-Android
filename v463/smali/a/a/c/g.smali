.class public final enum La/a/c/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/g;

.field public static final enum b:La/a/c/g;

.field public static final enum c:La/a/c/g;

.field private static final synthetic e:[La/a/c/g;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, La/a/c/g;

    const-string v1, "NOT_PERMITTED"

    const/4 v2, 0x0

    const-string v3, "NotPermitted"

    invoke-direct {v0, v1, v2, v3}, La/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/g;->a:La/a/c/g;

    .line 8
    new-instance v0, La/a/c/g;

    const-string v1, "DISABLED"

    const/4 v3, 0x1

    const-string v4, "Disabled"

    invoke-direct {v0, v1, v3, v4}, La/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/g;->b:La/a/c/g;

    .line 9
    new-instance v0, La/a/c/g;

    const-string v1, "ENABLED"

    const/4 v4, 0x2

    const-string v5, "Enabled"

    invoke-direct {v0, v1, v4, v5}, La/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/g;->c:La/a/c/g;

    const/4 v1, 0x3

    new-array v1, v1, [La/a/c/g;

    .line 6
    sget-object v5, La/a/c/g;->a:La/a/c/g;

    aput-object v5, v1, v2

    sget-object v2, La/a/c/g;->b:La/a/c/g;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, La/a/c/g;->e:[La/a/c/g;

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
    iput-object p3, p0, La/a/c/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/c/g;
    .locals 1

    .line 6
    const-class v0, La/a/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/c/g;

    return-object p0
.end method

.method public static values()[La/a/c/g;
    .locals 1

    .line 6
    sget-object v0, La/a/c/g;->e:[La/a/c/g;

    invoke-virtual {v0}, [La/a/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/g;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, La/a/c/g;->d:Ljava/lang/String;

    return-object v0
.end method
