//
//  AKBalance.m
//  AudioKit
//
//  Auto-generated from scripts by Aurelius Prochazka on 12/24/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//
//  Implementation of Csound's balance:
//  http://www.csounds.com/manual/html/balance.html
//

#import "AKBalance.h"

@interface AKBalance () {
    AKAudio *asig;
    AKAudio *acomp;
    AKConstant *ihp;
}
@end

@implementation AKBalance

- (instancetype)initWithAudioSource:(AKAudio *)audioSource
              comparatorAudioSource:(AKAudio *)comparatorAudioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        asig = audioSource;
        acomp = comparatorAudioSource;
        ihp = akp(10);
    }
    return self;
}

- (void)setOptionalHalfPowerPoint:(AKConstant *)halfPowerPoint {
	ihp = halfPowerPoint;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ balance %@, %@, %@",
            self, asig, acomp, ihp];
}

@end