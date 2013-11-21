/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "MBThreadService_v62.h"

/**
 * author Bruno Farache
 */
@implementation MBThreadService_v62

- (void)deleteThreadWithThreadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/delete-thread": _params};

	[self.session invoke:_command error:error];
}

- (NSArray *)getGroupThreadsWithGroupId:(long)groupId userId:(long)userId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getGroupThreadsWithGroupId:(long)groupId userId:(long)userId modifiedDate:(long)modifiedDate status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"modifiedDate": @(modifiedDate),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getGroupThreadsWithGroupId:(long)groupId userId:(long)userId status:(int)status subscribed:(BOOL)subscribed start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"subscribed": @(subscribed),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getGroupThreadsWithGroupId:(long)groupId userId:(long)userId status:(int)status subscribed:(BOOL)subscribed includeAnonymous:(BOOL)includeAnonymous start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"subscribed": @(subscribed),
		@"includeAnonymous": @(includeAnonymous),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getGroupThreadsCountWithGroupId:(long)groupId userId:(long)userId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getGroupThreadsCountWithGroupId:(long)groupId userId:(long)userId modifiedDate:(long)modifiedDate status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"modifiedDate": @(modifiedDate),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getGroupThreadsCountWithGroupId:(long)groupId userId:(long)userId status:(int)status subscribed:(BOOL)subscribed error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"subscribed": @(subscribed)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getGroupThreadsCountWithGroupId:(long)groupId userId:(long)userId status:(int)status subscribed:(BOOL)subscribed includeAnonymous:(BOOL)includeAnonymous error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"subscribed": @(subscribed),
		@"includeAnonymous": @(includeAnonymous)
	};

	NSDictionary *_command = @{@"/mbthread/get-group-threads-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSArray *)getThreadsWithGroupId:(long)groupId categoryId:(long)categoryId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/get-threads": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getThreadsCountWithGroupId:(long)groupId categoryId:(long)categoryId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbthread/get-threads-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSDictionary *)lockThreadWithThreadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/lock-thread": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveThreadWithCategoryId:(long)categoryId threadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId),
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/move-thread": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveThreadFromTrashWithCategoryId:(long)categoryId threadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId),
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/move-thread-from-trash": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveThreadToTrashWithThreadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/move-thread-to-trash": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)restoreThreadFromTrashWithThreadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/restore-thread-from-trash": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)searchWithGroupId:(long)groupId creatorUserId:(long)creatorUserId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"creatorUserId": @(creatorUserId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/search": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)searchWithGroupId:(long)groupId creatorUserId:(long)creatorUserId startDate:(long)startDate endDate:(long)endDate status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"creatorUserId": @(creatorUserId),
		@"startDate": @(startDate),
		@"endDate": @(endDate),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbthread/search": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)splitThreadWithMessageId:(long)messageId subject:(NSString *)subject serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId),
		@"subject": subject,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbthread/split-thread": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)unlockThreadWithThreadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbthread/unlock-thread": _params};

	[self.session invoke:_command error:error];
}

@end