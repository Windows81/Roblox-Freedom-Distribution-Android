.class public Lcom/roblox/platform/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/platform/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/d$b$a;
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

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/platform/d$b;->d:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/platform/d$b;->e:I

    .line 221
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/platform/d$b;->f:I

    .line 75
    iput-object p1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 193
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/platform/d$b$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/roblox/platform/d$b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 226
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 227
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iput-boolean v1, p0, Lcom/roblox/platform/d$b;->c:Z

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    .line 170
    iput v1, p0, Lcom/roblox/platform/d$b;->d:I

    .line 171
    return-void
.end method

.method private c()[Lcom/roblox/platform/d$b$a;
    .locals 7

    .prologue
    .line 199
    iget v0, p0, Lcom/roblox/platform/d$b;->e:I

    new-array v1, v0, [Lcom/roblox/platform/d$b$a;

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 201
    iget v0, p0, Lcom/roblox/platform/d$b;->d:I

    add-int/lit8 v3, v0, 0x4

    .line 202
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 203
    add-int v4, v3, v0

    .line 204
    if-eqz v2, :cond_0

    array-length v5, v2

    if-le v5, v4, :cond_0

    .line 205
    new-instance v5, Lcom/roblox/platform/d$b$a;

    invoke-direct {v5, p0}, Lcom/roblox/platform/d$b$a;-><init>(Lcom/roblox/platform/d$b;)V

    .line 206
    aget-object v6, v2, v4

    invoke-direct {p0, v6}, Lcom/roblox/platform/d$b;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/roblox/platform/d$b$a;->a:Ljava/lang/String;

    .line 207
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/roblox/platform/d$b$a;->b:Ljava/lang/String;

    .line 208
    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v5, Lcom/roblox/platform/d$b$a;->c:I

    .line 209
    aput-object v5, v1, v0

    .line 202
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance v4, Lcom/roblox/platform/d$b$a;

    invoke-direct {v4, p0}, Lcom/roblox/platform/d$b$a;-><init>(Lcom/roblox/platform/d$b;)V

    aput-object v4, v1, v0

    goto :goto_1

    .line 214
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->b()V

    .line 112
    return v1

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->c()[Lcom/roblox/platform/d$b$a;

    move-result-object v2

    .line 106
    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_0
    aget-object v1, v2, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 107
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 108
    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v0}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public a()Lcom/roblox/platform/d$b;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    .line 81
    return-object p0
.end method

.method a(I)Lcom/roblox/platform/d$b;
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/roblox/platform/d$b;->d:I

    .line 91
    return-object p0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->b()V

    .line 125
    return v1

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->c()[Lcom/roblox/platform/d$b$a;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_0
    aget-object v1, v2, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 121
    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v0}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 130
    iget-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->b()V

    .line 138
    return v1

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->c()[Lcom/roblox/platform/d$b$a;

    move-result-object v2

    .line 132
    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_0
    aget-object v1, v2, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 134
    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v0}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->b()V

    .line 151
    return v1

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->c()[Lcom/roblox/platform/d$b$a;

    move-result-object v2

    .line 145
    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_0
    aget-object v1, v2, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 146
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v0}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public e(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/roblox/platform/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->b()V

    .line 164
    return v1

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/roblox/platform/d$b;->c()[Lcom/roblox/platform/d$b$a;

    move-result-object v2

    .line 158
    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_0
    aget-object v1, v2, v1

    invoke-direct {p0, v1, p1}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 160
    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/roblox/platform/d$b;->b:Ljava/lang/String;

    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v0}, Lcom/roblox/platform/d$b;->a(Lcom/roblox/platform/d$b$a;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/roblox/platform/d$b;->a:Ljava/lang/String;

    goto :goto_2
.end method
