.class public final enum La/a/f/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/f/b;

.field public static final enum b:La/a/f/b;

.field public static final enum c:La/a/f/b;

.field public static final enum d:La/a/f/b;

.field private static final synthetic e:[La/a/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, La/a/f/b;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/f/b;->a:La/a/f/b;

    .line 14
    new-instance v0, La/a/f/b;

    const-string v1, "WARN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/f/b;->b:La/a/f/b;

    .line 18
    new-instance v0, La/a/f/b;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, La/a/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/f/b;->c:La/a/f/b;

    .line 22
    new-instance v0, La/a/f/b;

    const-string v1, "OFF"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, La/a/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/f/b;->d:La/a/f/b;

    const/4 v1, 0x4

    new-array v1, v1, [La/a/f/b;

    .line 6
    sget-object v6, La/a/f/b;->a:La/a/f/b;

    aput-object v6, v1, v2

    sget-object v2, La/a/f/b;->b:La/a/f/b;

    aput-object v2, v1, v3

    sget-object v2, La/a/f/b;->c:La/a/f/b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, La/a/f/b;->e:[La/a/f/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/f/b;
    .locals 1

    .line 6
    const-class v0, La/a/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/f/b;

    return-object p0
.end method

.method public static values()[La/a/f/b;
    .locals 1

    .line 6
    sget-object v0, La/a/f/b;->e:[La/a/f/b;

    invoke-virtual {v0}, [La/a/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/f/b;

    return-object v0
.end method
