.class public final enum Lc/b/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a$a;

.field public static final enum b:Lc/b/a$a;

.field public static final enum c:Lc/b/a$a;

.field public static final enum d:Lc/b/a$a;

.field private static final synthetic e:[Lc/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lc/b/a$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a$a;->a:Lc/b/a$a;

    .line 63
    new-instance v0, Lc/b/a$a;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a$a;->b:Lc/b/a$a;

    .line 81
    new-instance v0, Lc/b/a$a;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lc/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a$a;->c:Lc/b/a$a;

    .line 103
    new-instance v0, Lc/b/a$a;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lc/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a$a;->d:Lc/b/a$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lc/b/a$a;

    .line 50
    sget-object v6, Lc/b/a$a;->a:Lc/b/a$a;

    aput-object v6, v1, v2

    sget-object v2, Lc/b/a$a;->b:Lc/b/a$a;

    aput-object v2, v1, v3

    sget-object v2, Lc/b/a$a;->c:Lc/b/a$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lc/b/a$a;->e:[Lc/b/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a$a;
    .locals 1

    .line 50
    const-class v0, Lc/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a$a;

    return-object p0
.end method

.method public static values()[Lc/b/a$a;
    .locals 1

    .line 50
    sget-object v0, Lc/b/a$a;->e:[Lc/b/a$a;

    invoke-virtual {v0}, [Lc/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a$a;

    return-object v0
.end method
