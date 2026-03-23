.class public Lcom/roblox/platform/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/platform/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/e$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/roblox/platform/e$b;->d:I

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/roblox/platform/e$b;->e:I

    const/4 v0, 0x4

    .line 221
    iput v0, p0, Lcom/roblox/platform/e$b;->f:I

    .line 75
    iput-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const-string v2, "  "

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/platform/e$b$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/roblox/platform/e$b$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    .line 170
    iput v0, p0, Lcom/roblox/platform/e$b;->d:I

    return-void
.end method

.method private c()[Lcom/roblox/platform/e$b$a;
    .locals 8

    .line 199
    iget v0, p0, Lcom/roblox/platform/e$b;->e:I

    new-array v1, v0, [Lcom/roblox/platform/e$b$a;

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 201
    iget v3, p0, Lcom/roblox/platform/e$b;->d:I

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    add-int v5, v3, v4

    if-eqz v2, :cond_0

    .line 204
    array-length v6, v2

    if-le v6, v5, :cond_0

    .line 205
    new-instance v6, Lcom/roblox/platform/e$b$a;

    invoke-direct {v6, p0}, Lcom/roblox/platform/e$b$a;-><init>(Lcom/roblox/platform/e$b;)V

    .line 206
    aget-object v7, v2, v5

    invoke-direct {p0, v7}, Lcom/roblox/platform/e$b;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/roblox/platform/e$b$a;->a:Ljava/lang/String;

    .line 207
    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/roblox/platform/e$b$a;->b:Ljava/lang/String;

    .line 208
    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v6, Lcom/roblox/platform/e$b$a;->c:I

    .line 209
    aput-object v6, v1, v4

    goto :goto_1

    .line 211
    :cond_0
    new-instance v5, Lcom/roblox/platform/e$b$a;

    invoke-direct {v5, p0}, Lcom/roblox/platform/e$b$a;-><init>(Lcom/roblox/platform/e$b;)V

    aput-object v5, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->c()[Lcom/roblox/platform/e$b$a;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_0
    aget-object v1, v0, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 107
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 108
    iget-object p1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 111
    :goto_3
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->b()V

    return v1
.end method

.method public a()Lcom/roblox/platform/e$b;
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    return-object p0
.end method

.method a(I)Lcom/roblox/platform/e$b;
    .locals 0

    .line 90
    iput p1, p0, Lcom/roblox/platform/e$b;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 117
    iget-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->c()[Lcom/roblox/platform/e$b$a;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_0
    aget-object v1, v0, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 120
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 121
    iget-object p1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 124
    :goto_3
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->b()V

    return v1
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->c()[Lcom/roblox/platform/e$b$a;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_0
    aget-object v1, v0, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 133
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 134
    iget-object p1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 137
    :goto_3
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->b()V

    return v1
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->c()[Lcom/roblox/platform/e$b$a;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_0
    aget-object v1, v0, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 146
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 147
    iget-object p1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 150
    :goto_3
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->b()V

    return v1
.end method

.method public e(Ljava/lang/String;)I
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcom/roblox/platform/e$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->c()[Lcom/roblox/platform/e$b$a;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_0
    aget-object v1, v0, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 159
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 160
    iget-object p1, p0, Lcom/roblox/platform/e$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/roblox/platform/e$b;->a:Ljava/lang/String;

    :goto_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/roblox/platform/e$b;->a(Lcom/roblox/platform/e$b$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 163
    :goto_3
    invoke-direct {p0}, Lcom/roblox/platform/e$b;->b()V

    return v1
.end method
