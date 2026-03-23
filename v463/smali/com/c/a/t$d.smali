.class public final enum Lcom/c/a/t$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/c/a/t$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/t$d;

.field public static final enum b:Lcom/c/a/t$d;

.field public static final enum c:Lcom/c/a/t$d;

.field private static final synthetic e:[Lcom/c/a/t$d;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 855
    new-instance v0, Lcom/c/a/t$d;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lcom/c/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    .line 856
    new-instance v0, Lcom/c/a/t$d;

    const-string v1, "DISK"

    const/4 v3, 0x1

    const v4, -0xffff01

    invoke-direct {v0, v1, v3, v4}, Lcom/c/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/t$d;->b:Lcom/c/a/t$d;

    .line 857
    new-instance v0, Lcom/c/a/t$d;

    const-string v1, "NETWORK"

    const/4 v4, 0x2

    const/high16 v5, -0x10000

    invoke-direct {v0, v1, v4, v5}, Lcom/c/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/t$d;->c:Lcom/c/a/t$d;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/c/a/t$d;

    .line 854
    sget-object v5, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/c/a/t$d;->b:Lcom/c/a/t$d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/c/a/t$d;->e:[Lcom/c/a/t$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Lcom/c/a/t$d;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/t$d;
    .locals 1

    .line 854
    const-class v0, Lcom/c/a/t$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/c/a/t$d;

    return-object p0
.end method

.method public static values()[Lcom/c/a/t$d;
    .locals 1

    .line 854
    sget-object v0, Lcom/c/a/t$d;->e:[Lcom/c/a/t$d;

    invoke-virtual {v0}, [Lcom/c/a/t$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/t$d;

    return-object v0
.end method
