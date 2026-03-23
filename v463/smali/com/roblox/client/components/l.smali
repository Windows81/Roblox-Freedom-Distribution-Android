.class public Lcom/roblox/client/components/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I = 0x2


# instance fields
.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Lcom/roblox/client/components/l;->a:I

    iput v0, p0, Lcom/roblox/client/components/l;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/roblox/client/components/l;->d:I

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 37
    iget v0, p0, Lcom/roblox/client/components/l;->d:I

    sget v1, Lcom/roblox/client/components/l;->a:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 38
    sget v1, Lcom/roblox/client/components/l;->b:I

    const/4 v3, 0x0

    const-string v4, "rbx.input"

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-string p1, "WINDOW_IS_OBSCURED"

    .line 39
    invoke-static {v4, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 42
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/l;->d:I

    sget v1, Lcom/roblox/client/components/l;->c:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const-string p1, "WINDOW_IS_PARTIALLY_OBSCURED"

    .line 43
    invoke-static {v4, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v2
.end method
