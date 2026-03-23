.class public final enum La/a/c/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/c/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/a/a;

.field public static final enum b:La/a/c/a/a;

.field private static final synthetic c:[La/a/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, La/a/c/a/a;

    const-string v1, "ByInterval"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/c/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/a/a;->a:La/a/c/a/a;

    .line 5
    new-instance v0, La/a/c/a/a;

    const-string v1, "NoRetry"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/c/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/a/a;->b:La/a/c/a/a;

    const/4 v1, 0x2

    new-array v1, v1, [La/a/c/a/a;

    .line 3
    sget-object v4, La/a/c/a/a;->a:La/a/c/a/a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, La/a/c/a/a;->c:[La/a/c/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/c/a/a;
    .locals 1

    .line 3
    const-class v0, La/a/c/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/c/a/a;

    return-object p0
.end method

.method public static values()[La/a/c/a/a;
    .locals 1

    .line 3
    sget-object v0, La/a/c/a/a;->c:[La/a/c/a/a;

    invoke-virtual {v0}, [La/a/c/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/a/a;

    return-object v0
.end method
