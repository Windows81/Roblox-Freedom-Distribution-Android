.class public final enum La/a/c/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/a;

.field public static final enum b:La/a/c/a;

.field public static final enum c:La/a/c/a;

.field public static final enum d:La/a/c/a;

.field private static final synthetic f:[La/a/c/a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, La/a/c/a;

    const-string v1, "CHARGING"

    const/4 v2, 0x0

    const-string v3, "Charging"

    invoke-direct {v0, v1, v2, v3}, La/a/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/a;->a:La/a/c/a;

    .line 5
    new-instance v0, La/a/c/a;

    const-string v1, "UNKNOWN"

    const/4 v3, 0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v1, v3, v4}, La/a/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/a;->b:La/a/c/a;

    .line 6
    new-instance v0, La/a/c/a;

    const-string v1, "FULL"

    const/4 v4, 0x2

    const-string v5, "Full"

    invoke-direct {v0, v1, v4, v5}, La/a/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/a;->c:La/a/c/a;

    .line 7
    new-instance v0, La/a/c/a;

    const-string v1, "UNPLAGGED"

    const/4 v5, 0x3

    const-string v6, "Unplagged"

    invoke-direct {v0, v1, v5, v6}, La/a/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/a/c/a;->d:La/a/c/a;

    const/4 v1, 0x4

    new-array v1, v1, [La/a/c/a;

    .line 3
    sget-object v6, La/a/c/a;->a:La/a/c/a;

    aput-object v6, v1, v2

    sget-object v2, La/a/c/a;->b:La/a/c/a;

    aput-object v2, v1, v3

    sget-object v2, La/a/c/a;->c:La/a/c/a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, La/a/c/a;->f:[La/a/c/a;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, La/a/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/c/a;
    .locals 1

    .line 3
    const-class v0, La/a/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/c/a;

    return-object p0
.end method

.method public static values()[La/a/c/a;
    .locals 1

    .line 3
    sget-object v0, La/a/c/a;->f:[La/a/c/a;

    invoke-virtual {v0}, [La/a/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, La/a/c/a;->e:Ljava/lang/String;

    return-object v0
.end method
