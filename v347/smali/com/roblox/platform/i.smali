.class public Lcom/roblox/platform/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/roblox/platform/i;->a()I

    move-result v0

    int-to-long v2, v0

    .line 33
    invoke-direct {p0, p1}, Lcom/roblox/platform/i;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 34
    invoke-direct {p0, p1}, Lcom/roblox/platform/i;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 35
    invoke-direct {p0, p1}, Lcom/roblox/platform/i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    .line 36
    new-instance v0, Lcom/roblox/platform/i$a;

    invoke-direct {v0}, Lcom/roblox/platform/i$a;-><init>()V

    invoke-direct {p0}, Lcom/roblox/platform/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/roblox/platform/i$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 44
    if-eqz p5, :cond_0

    const-string v0, "Phone"

    .line 46
    :goto_0
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Mozilla/5.0 (%dMB; %dx%d; %dx%d; %dx%d; %s; %s) %s (KHTML, like Gecko)  ROBLOX Android App %s %s Hybrid() %s"

    const/16 v10, 0xd

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v11

    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x2

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v2

    const/4 v1, 0x3

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x4

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x5

    iget v2, v5, Landroid/graphics/Point;->x:I

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x6

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x7

    aput-object v6, v10, v1

    const/16 v1, 0x8

    aput-object v7, v10, v1

    const/16 v1, 0x9

    aput-object p3, v10, v1

    const/16 v1, 0xa

    aput-object p2, v10, v1

    const/16 v1, 0xb

    aput-object v0, v10, v1

    const/16 v0, 0xc

    aput-object p4, v10, v0

    .line 46
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/platform/i;->a:Ljava/lang/String;

    .line 60
    return-void

    .line 44
    :cond_0
    const-string v0, "Tablet"

    goto :goto_0
.end method

.method private a()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 92
    .line 95
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/meminfo"

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 100
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    :goto_0
    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_1
    return v0

    .line 97
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 100
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 103
    :goto_4
    throw v0

    .line 109
    :cond_1
    const-string v1, "\\s+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    array-length v1, v2

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 114
    const-wide/16 v0, 0x0

    .line 116
    const/4 v3, 0x1

    :try_start_5
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    const-wide/16 v4, 0x400

    div-long v0, v2, v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    .line 120
    :goto_5
    long-to-int v0, v0

    goto :goto_1

    .line 101
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 118
    :catch_4
    move-exception v2

    goto :goto_5

    .line 99
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 97
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 124
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 125
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 128
    return-object v1
.end method

.method private b(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 134
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 135
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 136
    return-object v1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 149
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 142
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 143
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 144
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/roblox/platform/i;->a:Ljava/lang/String;

    return-object v0
.end method
