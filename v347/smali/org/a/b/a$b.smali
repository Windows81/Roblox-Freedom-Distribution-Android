.class public final enum Lorg/a/b/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/a/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/a/b/a$b;

.field public static final enum b:Lorg/a/b/a$b;

.field private static final synthetic c:[Lorg/a/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/a/b/a$b;

    const-string v1, "MATCHED"

    invoke-direct {v0, v1, v2}, Lorg/a/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/b/a$b;->a:Lorg/a/b/a$b;

    .line 38
    new-instance v0, Lorg/a/b/a$b;

    const-string v1, "NOT_MATCHED"

    invoke-direct {v0, v1, v3}, Lorg/a/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/a/b/a$b;

    sget-object v1, Lorg/a/b/a$b;->a:Lorg/a/b/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    aput-object v1, v0, v3

    sput-object v0, Lorg/a/b/a$b;->c:[Lorg/a/b/a$b;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/a/b/a$b;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/a/b/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/a/b/a$b;

    return-object v0
.end method

.method public static values()[Lorg/a/b/a$b;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/a/b/a$b;->c:[Lorg/a/b/a$b;

    invoke-virtual {v0}, [Lorg/a/b/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/b/a$b;

    return-object v0
.end method
