.class public final enum La/a/c/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/c;

.field public static final enum b:La/a/c/c;

.field private static final synthetic d:[La/a/c/c;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, La/a/c/c;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    const-string v3, "Disabled"

    invoke-direct {v0, v1, v2, v3}, La/a/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/c;->a:La/a/c/c;

    .line 8
    new-instance v0, La/a/c/c;

    const-string v1, "ENABLED"

    const/4 v3, 0x1

    const-string v4, "Enabled"

    invoke-direct {v0, v1, v3, v4}, La/a/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/c;->b:La/a/c/c;

    const/4 v1, 0x2

    new-array v1, v1, [La/a/c/c;

    .line 6
    sget-object v4, La/a/c/c;->a:La/a/c/c;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, La/a/c/c;->d:[La/a/c/c;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, La/a/c/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/c/c;
    .locals 1

    .line 6
    const-class v0, La/a/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/c/c;

    return-object p0
.end method

.method public static values()[La/a/c/c;
    .locals 1

    .line 6
    sget-object v0, La/a/c/c;->d:[La/a/c/c;

    invoke-virtual {v0}, [La/a/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, La/a/c/c;->c:Ljava/lang/String;

    return-object v0
.end method
