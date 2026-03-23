.class public final enum Landroidx/f/b/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/f/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/f/b/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/f/b/d$c;

.field public static final enum b:Landroidx/f/b/d$c;

.field public static final enum c:Landroidx/f/b/d$c;

.field private static final synthetic d:[Landroidx/f/b/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 103
    new-instance v0, Landroidx/f/b/d$c;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/f/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/f/b/d$c;->a:Landroidx/f/b/d$c;

    .line 107
    new-instance v0, Landroidx/f/b/d$c;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/f/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/f/b/d$c;->b:Landroidx/f/b/d$c;

    .line 111
    new-instance v0, Landroidx/f/b/d$c;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/f/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/f/b/d$c;->c:Landroidx/f/b/d$c;

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/f/b/d$c;

    .line 99
    sget-object v5, Landroidx/f/b/d$c;->a:Landroidx/f/b/d$c;

    aput-object v5, v1, v2

    sget-object v2, Landroidx/f/b/d$c;->b:Landroidx/f/b/d$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/f/b/d$c;->d:[Landroidx/f/b/d$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/f/b/d$c;
    .locals 1

    .line 99
    const-class v0, Landroidx/f/b/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/f/b/d$c;

    return-object p0
.end method

.method public static values()[Landroidx/f/b/d$c;
    .locals 1

    .line 99
    sget-object v0, Landroidx/f/b/d$c;->d:[Landroidx/f/b/d$c;

    invoke-virtual {v0}, [Landroidx/f/b/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/f/b/d$c;

    return-object v0
.end method
