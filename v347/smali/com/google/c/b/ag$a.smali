.class abstract enum Lcom/google/c/b/ag$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/c/b/ag$a;",
        ">;",
        "Lcom/google/c/a/b",
        "<",
        "Ljava/util/Map$Entry",
        "<**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/c/b/ag$a;

.field public static final enum b:Lcom/google/c/b/ag$a;

.field private static final synthetic c:[Lcom/google/c/b/ag$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/google/c/b/ag$a$1;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v2}, Lcom/google/c/b/ag$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/b/ag$a;->a:Lcom/google/c/b/ag$a;

    .line 96
    new-instance v0, Lcom/google/c/b/ag$a$2;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3}, Lcom/google/c/b/ag$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/b/ag$a;->b:Lcom/google/c/b/ag$a;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/c/b/ag$a;

    sget-object v1, Lcom/google/c/b/ag$a;->a:Lcom/google/c/b/ag$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/b/ag$a;->b:Lcom/google/c/b/ag$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/c/b/ag$a;->c:[Lcom/google/c/b/ag$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/c/b/ag$1;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/c/b/ag$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/ag$a;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/google/c/b/ag$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/ag$a;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/ag$a;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/c/b/ag$a;->c:[Lcom/google/c/b/ag$a;

    invoke-virtual {v0}, [Lcom/google/c/b/ag$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/ag$a;

    return-object v0
.end method
