.class public final enum La/a/g/c/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/g/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/g/c/a;

.field public static final enum b:La/a/g/c/a;

.field private static final synthetic c:[La/a/g/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, La/a/g/c/a;

    const-string v1, "ServerError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/g/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/g/c/a;->a:La/a/g/c/a;

    .line 15
    new-instance v0, La/a/g/c/a;

    const-string v1, "Ok"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/a/g/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/g/c/a;->b:La/a/g/c/a;

    const/4 v1, 0x2

    new-array v1, v1, [La/a/g/c/a;

    .line 6
    sget-object v4, La/a/g/c/a;->a:La/a/g/c/a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, La/a/g/c/a;->c:[La/a/g/c/a;

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

.method public static valueOf(Ljava/lang/String;)La/a/g/c/a;
    .locals 1

    .line 6
    const-class v0, La/a/g/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/g/c/a;

    return-object p0
.end method

.method public static values()[La/a/g/c/a;
    .locals 1

    .line 6
    sget-object v0, La/a/g/c/a;->c:[La/a/g/c/a;

    invoke-virtual {v0}, [La/a/g/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/g/c/a;

    return-object v0
.end method
