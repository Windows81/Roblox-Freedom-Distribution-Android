.class synthetic Lcom/roblox/client/t/f$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/roblox/client/ab/e;->values()[Lcom/roblox/client/ab/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/roblox/client/t/f$4;->a:[I

    :try_start_0
    sget-object v1, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    invoke-virtual {v1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/roblox/client/t/f$4;->a:[I

    sget-object v1, Lcom/roblox/client/ab/e;->c:Lcom/roblox/client/ab/e;

    invoke-virtual {v1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/roblox/client/t/f$4;->a:[I

    sget-object v1, Lcom/roblox/client/ab/e;->b:Lcom/roblox/client/ab/e;

    invoke-virtual {v1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
