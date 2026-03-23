.class public final enum Landroidx/h/e$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/h/e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/h/e$c;

.field public static final enum b:Landroidx/h/e$c;

.field public static final enum c:Landroidx/h/e$c;

.field private static final synthetic d:[Landroidx/h/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 377
    new-instance v0, Landroidx/h/e$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/h/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/h/e$c;->a:Landroidx/h/e$c;

    .line 382
    new-instance v0, Landroidx/h/e$c;

    const-string v1, "TRUNCATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/h/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/h/e$c;->b:Landroidx/h/e$c;

    .line 387
    new-instance v0, Landroidx/h/e$c;

    const-string v1, "WRITE_AHEAD_LOGGING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/h/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/h/e$c;->c:Landroidx/h/e$c;

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/h/e$c;

    .line 368
    sget-object v5, Landroidx/h/e$c;->a:Landroidx/h/e$c;

    aput-object v5, v1, v2

    sget-object v2, Landroidx/h/e$c;->b:Landroidx/h/e$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/h/e$c;->d:[Landroidx/h/e$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/h/e$c;
    .locals 1

    .line 368
    const-class v0, Landroidx/h/e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/h/e$c;

    return-object p0
.end method

.method public static values()[Landroidx/h/e$c;
    .locals 1

    .line 368
    sget-object v0, Landroidx/h/e$c;->d:[Landroidx/h/e$c;

    invoke-virtual {v0}, [Landroidx/h/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/h/e$c;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroidx/h/e$c;
    .locals 2

    .line 396
    sget-object v0, Landroidx/h/e$c;->a:Landroidx/h/e$c;

    if-eq p0, v0, :cond_0

    return-object p0

    .line 399
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "activity"

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 402
    invoke-static {p1}, Landroidx/core/app/b;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 403
    sget-object p1, Landroidx/h/e$c;->c:Landroidx/h/e$c;

    return-object p1

    .line 406
    :cond_1
    sget-object p1, Landroidx/h/e$c;->b:Landroidx/h/e$c;

    return-object p1
.end method
