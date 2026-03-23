.class public final enum Lcom/c/a/t$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/c/a/t$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/t$e;

.field public static final enum b:Lcom/c/a/t$e;

.field public static final enum c:Lcom/c/a/t$e;

.field private static final synthetic d:[Lcom/c/a/t$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 103
    new-instance v0, Lcom/c/a/t$e;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/c/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/t$e;->a:Lcom/c/a/t$e;

    .line 104
    new-instance v0, Lcom/c/a/t$e;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/c/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/t$e;->b:Lcom/c/a/t$e;

    .line 105
    new-instance v0, Lcom/c/a/t$e;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/c/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/t$e;->c:Lcom/c/a/t$e;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/c/a/t$e;

    .line 102
    sget-object v5, Lcom/c/a/t$e;->a:Lcom/c/a/t$e;

    aput-object v5, v1, v2

    sget-object v2, Lcom/c/a/t$e;->b:Lcom/c/a/t$e;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/c/a/t$e;->d:[Lcom/c/a/t$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/t$e;
    .locals 1

    .line 102
    const-class v0, Lcom/c/a/t$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/c/a/t$e;

    return-object p0
.end method

.method public static values()[Lcom/c/a/t$e;
    .locals 1

    .line 102
    sget-object v0, Lcom/c/a/t$e;->d:[Lcom/c/a/t$e;

    invoke-virtual {v0}, [Lcom/c/a/t$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/t$e;

    return-object v0
.end method
